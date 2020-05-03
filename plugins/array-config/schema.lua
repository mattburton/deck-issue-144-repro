return {
  name = "array-config",
  fields = {
    {
      config = {
        type = "record",
        fields = {
          {
            array = {
              type = "array",
              required = true,
              elements = {
                type = "record",
                fields = {
                  { name = { required = true, type = "string" } },
                  { versions = {
                      type = "array",
                      required = true,
                      elements = {
                        type = "record",
                        fields = {
                          { version = { required = true, type = "number" } },
                          { enabled = { required = true, type = "boolean" } }
                        }
                      }
                    }
                  }
                },
              },
            },
          },
        },
      },
    },
  },
}
