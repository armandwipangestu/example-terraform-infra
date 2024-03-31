<div align="center">
  <br />
      <img src="assets/terraform-banner.png" alt="Terraform Banner">
  <br />

  <h3 align="center">Example Terraform Infra</h3>

   <div align="center">
     Learn how to make Infrastructure as Code (IaC) with Terraform to safely and predictable create, change, and improve infrastructure.
    </div>
</div>

## Initialize Terraform

```bash
terraform init
```

The output should look like this:

```bash
* provider.google: version = "~> 4.43.0"
Terraform has been successfully initialized!
```

## Rewrite Terraform configuration file to a canonical format and style

```bash
terraform fmt
```

The output should look like this:

```bash
mynetwork.tf
```

## Initialize Terraform

```bash
terraform init
```

The output should look like this:

```bash
Initializing modules...
- mynet-eu-vm in instance
- mynet-us-vm in instance
...
* provider.google: version = "~> 4.43.0"

Terraform has been successfully initialized!
```

## Create Execution Plan

```bash
terraform plan
```

The output should look like this:

```bash
...
Plan: 4 to add, 0 to change, 0 to destroy.
...
```

Terraform determined that the following 4 resources need to be added:

| Name                              | Description                                     |
| --------------------------------- | ----------------------------------------------- |
| mynetwork                         | VPC network                                     |
| mynetwork-allow-http-ssh-rdp-icmp | Firewall rule to allow HTTP, SSH, RDP, and ICMP |
| mynet-us-vm                       | VM instance in `us-central1-a`                  |
| mynet-eu-vm                       | VM instance in `europe-west1-a`                 |

## Apply desired changes

```bash
terraform apply
```

To confirm the planned actions, type `yes`

The output should look like this:

```bash
...
Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
```
