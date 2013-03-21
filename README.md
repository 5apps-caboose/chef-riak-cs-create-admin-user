# riak-cs-create-admin-user

## Description

Creates and configures an administrator for Riak CS.

## Requirements

### Platforms

* Ubuntu 12.04 (Precise)
* CentOS 6.3

### Cookbooks

* riak
* riak-cs

## Attributes

* `node["riak_cs_create_admin_user"]["email"]` - Riak CS administrator e-mail
  address.
* `node["riak_cs_create_admin_user"]["name"]` - Riak CS administrator name.

## Recipes

* `recipe[riak-cs-create-admin-user]` will configure an administrator for Riak CS.

## Usage

Ensure that the `riak-cs-create-admin-user` recipe is added after `riak`,
`riak-cs`, and `stanchion` in the run list.
