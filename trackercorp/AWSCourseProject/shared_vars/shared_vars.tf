output "vpcid"{
	value = "${local.vpcid}"
}

output "publicsubnetid1"{
	value = "${local.publicsubnetid1}"
}

output "publicsubnetid2"{
	value = "${local.publicsubnetid2}"
}

output "privatesubnetid"{
	value = "${local.privatesubnetid}"
}

output "env_suffix"{
	value = "${local.env}"
}

locals {
	env = "${terraform.workspace}"

	vpcid_env = {
		default = "vpc-0cb87bd71fd2089e0"
		staging = "vpc-b050a4d9"
		production = "vpc-b050a4d9"
	}
	vpcid = "${lookup(local.vpcid_env, local.env)}"

	publicsubnetid1_env = {
		default = "subnet-01152c5f9d3fc4bde"
		staging = "subnet-4268942b"
		production = "subnet-4268942b"
	}
	publicsubnetid1 = "${lookup(local.publicsubnetid1_env, local.env)}"

	publicsubnetid2_env = {
		default = "subnet-06a9991733adb45bd"
		staging = "subnet-d65d699c"
		production = "subnet-d65d699c"
	}
	publicsubnetid2 = "${lookup(local.publicsubnetid2_env, local.env)}"

	privatesubnetid_env = {
		default = "subnet-0e38da26f2197b14b"
		staging = "subnet-9c9387e4"
		production = "subnet-9c9387e4"
	}
	privatesubnetid = "${lookup(local.privatesubnetid_env, local.env)}"
}