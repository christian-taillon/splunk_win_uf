## Splunk Windows Universal Forwarder Lab Resources

This package contains prebuilt resources to aid in deploying the Splunk Universal Forwarder in a lab or education environment. Though components of this project may be helpful to an organization, the total package is intended to act as a resource that individuals can pull from to quickly set up a Windows Universal Forwarder to log Windows Event logs.

This is not intended for a production environment. It has yet to be tested in various configurations and in multiple settings.  The [inputs.conf](/forwarder_configuration/local/inputs.conf) nables a significant amount of Splunk Inputs.

### Configuration Notes Items:
You MUST provide an indexer IP address in the [/forwarder_configuration/local/inputs.conf](/forwarder_configuration/local/inputs.conf) file.

### Setting Up a Splunk Server
Users may also find [christian-taillon/splunk-docker](https://github.com/christian-taillon/splunk-docker) to be a useful tool for deploying the Splunk server to which this Universal Forwarder can forward data.
