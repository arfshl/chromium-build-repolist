# This script is licensed under GPLv3

puts "Generating README..."
# Read the entire contents of file.txt located in the same directory
input = File.read(File.join(__dir__, "rawdata.txt"))

# Split the input into separate blocks.
# Each block starts with "Version:" and continues until the next
# "Version:" line or the end of the file.
blocks = input.scan(/Version:.*?(?=^Version:|\z)/m)

# Metadata used for each parsed block.
# The array order should match the order of blocks in file.txt.
titles = [
  {
    title: "Chrome (64-bit) for Windows latest",
    arch: "64-bit"
  },
  {
    title: "Chrome (32-bit) for Windows 10",
    arch: "32-bit"
  },
  {
    title: "Chrome (64-bit) for Windows 7/8/8.1",
    arch: "64-bit"
  },
  {
    title: "Chrome (32-bit) for Windows 7/8/8.1",
    arch: "32-bit"
  },
  {
    title: "Chrome (32-bit) for Windows XP/Vista",
    arch: "32-bit"
  },
  { 
    title: "Chrome (64-bit) for macOS latest",
    arch: "64-bit"
  }
]

# Extract the value of a specific key from a block.
# Example:
#   Version: 138.0.7204.169
# returns:
#   "138.0.7204.169"
def value(text, key)
  text[/^#{key}:\s*(.+)$/, 1]
end

# Convert file size from bytes to megabytes
# and format it with two decimal places.
def size_mb(bytes)
  "%.2f MB" % (bytes.to_i / 1024.0 / 1024.0)
end

require "uri"

# Generate alternative download URLs.
# The original URL is kept, then two equivalent mirrors
# are created using the same file path.
def alt_links(url)
  uri = URI(url)

  # Extract only the path component from the URL
  path = uri.path

  [
    url,
    "https://dl.google.com#{path}",
    "https://edgedl.me.gvt1.com/edgedl#{path}"
  ]
end

# Store each generated Markdown section here.
readme = []


# README header
readme << <<~MD
# ![Logo](assets/chrome-logo-64.png) Google Chrome
official, stable and offline installers

<details>
<summary><strong>Informations</strong></summary>

These offline releases of Google Chrome come from the official Google website. They are not re-packed. You can download them on your device... and unlike other public releases, you can extract their whole content with a ZIP file archiver (like 7-zip, PeaZip...).

</details>

<details>

<summary><b>OS</b></summary>
<br>

[Windows latest 64-bit](https://github.com/arfshl/chromium-build-repolist/blob/main/chrome-offline-installers.md#chrome-64-bit-for-windows-latest)

[Windows 10 32-bit](https://github.com/arfshl/chromium-build-repolist/blob/main/chrome-offline-installers.md#chrome-32-bit-for-windows-10)

[Windows 7/8/8.1 64-bit](https://github.com/arfshl/chromium-build-repolist/blob/main/chrome-offline-installers.md#chrome-64-bit-for-windows-7881)

[Windows 7/8/8.1 32-bit](https://github.com/arfshl/chromium-build-repolist/blob/main/chrome-offline-installers.md#chrome-32-bit-for-windows-7881)

[Windows XP/Vista 32-bit](https://github.com/arfshl/chromium-build-repolist/blob/main/chrome-offline-installers.md#chrome-32-bit-for-windows-xpvista)

[macOS latest 64-bit](https://github.com/arfshl/chromium-build-repolist/blob/main/chrome-offline-installers.md#chrome-64-bit-for-macos-latest)
</details>


MD

# Process every parsed block.
blocks.each_with_index do |block, i|
  # Get metadata for this block.
  # If there are more blocks than predefined titles,
  # use a generic fallback.
  info = titles[i] || {
    title: "Chrome",
    arch: "-"
  }

  # Extract all required fields.
  version = value(block, "Version")
  url = value(block, "Url")
  sha = value(block, "SHA256")
  size = value(block, "Size")

# Build README section for each platforms
readme << <<~MD
### #{info[:title]}

Version: #{version}

Channel: Stable

Architecture: #{info[:arch]}

Size: #{size_mb(size)}

#### File checksum (SHA256)
#{sha}

#### Official links

#{alt_links(url).join("\n")}

---

MD
end

# Save the generated README.md two directories above
# the current script location.
#File.write("chrome-offline-installers.md", readme.join("\n"))
output = File.expand_path("../../chrome-offline-installers/README.md", __dir__)
File.write(output, readme.join("\n"))

# Notify the user that generation completed successfully.
puts "README has been successfully generated"