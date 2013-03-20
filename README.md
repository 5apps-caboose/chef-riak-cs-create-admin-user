# riak_cs_create_admin_user

## Description

Creates and configures an administrator for Riak CS.

## Requirements

### Platforms

* Ubuntu 12.04 (Precise)
* CentOS 6.3

### Cookbooks

* riak
* riak_cs

## Attributes

* `node["riak_cs_create_admin_user"]["email"]` - Riak CS administrator e-mail
  address.
* `node["riak_cs_create_admin_user"]["name"]` - Riak CS administrator name.

## Recipes

* `recipe[riak_cs_create_admin_user]` will configure an administrator for Riak CS.

## Usage

Ensure that the `riak_cs_create_admin_user` recipe is added after `riak`,
`riak_cs`, and `stanchion` in the run list.
