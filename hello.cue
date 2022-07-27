// The first time you run the hello
// action as `dagger do hello --log-format plain`,
// make sure to run `dagger project update` first,
// so that all required dependencies are available.

package hello

import (
	"dagger.io/dagger"
	"universe.dagger.io/alpine"

)

dagger.#Plan & {
	actions: {
		_alpine: alpine.#Build & {
			packages: bash: _
		}
	}
}
