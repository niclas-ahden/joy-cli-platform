## Generate random 32-bit and 64-bit seed values.
app [main!] { pf: platform "https://github.com/niclas-ahden/joy-cli-platform/releases/download/0.1.0/2CA47UwgXEjGTSVAu1jBUqUNeJA23DLjQZTuwtyL6Zfu.tar.zst" }

import pf.OsStr
import pf.Stdout
import pf.Random

main! : List(OsStr) => Try({}, _)
main! = |_args| {
	random_u64 = Random.seed_u64!()?
	Stdout.line!("Random U64 seed is: ${random_u64.to_str()}")?

	random_u32 = Random.seed_u32!()?
	Stdout.line!("Random U32 seed is: ${random_u32.to_str()}")?

	Ok({})
}
