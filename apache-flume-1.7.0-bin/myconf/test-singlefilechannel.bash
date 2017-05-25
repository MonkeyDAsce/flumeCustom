

# Name the components on this agent
a1.sources = r1
a1.sinks = k2
a1.channels = c2

# Describe/configure the source
a1.sources.r1.type = org.apache.flume.source.MyAvroSource
a1.sources.r1.bind = localhost
a1.sources.r1.port = 44444
a1.sources.r1.channels = c2

# Describe the sink
#a1.sinks.k1.type = logger
#a1.sinks.k1.channel = c1
#
a1.sinks.k2.type = null
a1.sinks.k2.channel = c2

# channel selector
a1.sources.r1.selector.type = org.apache.flume.channel.MyChannelSelector
a1.sources.r1.selector.mem_channels = c2
#a1.sources.r1.selector.file_channels = c2

# Use a channel which buffers events in memory  http://flume.apache.org/FlumeUserGuide.html#memory-channel
#a1.channels.c1.type = org.apache.flume.channel.MyMemoryChannel
#a1.channels.c1.capacity = 1000
#a1.channels.c1.transactionCapacity = 100
#a1.channels.c1.byteCapacitySlotSize = 2


a1.channels.c2.type = file
a1.channels.c2.checkpointDir = fileChannel/checkpoint
a1.channels.c2.dataDirs = fileChannel/data

# Bind the source and sink to the channel


