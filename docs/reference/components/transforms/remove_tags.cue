package metadata

components: transforms: remove_tags: {
  title: "Remove Tags"
  short_description: "Accepts metric events and allows you to remove one or more metric tags."
  long_description: "Accepts metric events and allows you to remove one or more metric tags."

  classes: {
    commonly_used: false
    function: "schema"
  }

  statuses: {
    development: "stable"
  }

  support: {
    input_types: ["metric"]

    platforms: {
      "aarch64-unknown-linux-gnu": true
      "aarch64-unknown-linux-musl": true
      "x86_64-apple-darwin": true
      "x86_64-pc-windows-msv": true
      "x86_64-unknown-linux-gnu": true
      "x86_64-unknown-linux-musl": true
    }

    requirements: []
    warnings: []
  }

  configuration: {
    tags: {
      description: "The tag names to drop."
      required: true
      warnings: []
      type: "[string]": {
        examples: [["tag1","tag2"]]
      }
    }
  }

  how_it_works: {
    complex_processing: {
      title: "Complex Processing"
      body: #"""
      If you encounter limitations with the `remove_tags` transform then we recommend using a
      [runtime](vector_programmable_transforms) transform. These transforms are designed for complex
      processing and give you the power of full programming runtime.
      """#
    }
  }
}
