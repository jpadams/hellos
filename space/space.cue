// The first time you run the hello
// action as `dagger do hello --log-format plain`,
// make sure to run `dagger project update` first,
// so that all required dependencies are available.

package hello

import (
	"dagger.io/dagger"
	"universe.dagger.io/bash"

)

dagger.#Plan & {
	actions: {
		hello: bash.#Run & {
			input: actions._alpine.output
			script: contents: "echo Hello Outer Space"
			always: true
		}
	}
}
