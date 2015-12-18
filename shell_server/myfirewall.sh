#!/bin/bash
#
# iptables example configuration script
#
# Flush all current rules from iptables
#
 iptables -F
#
# Allow SSH connections on tcp port 22
# This is essential when working on remote servers via SSH to prevent locking yourself out of the system
#
 iptables -A INPUT -p tcp --dport 22 -j ACCEPT
#
# This is game using ports.
#
  iptables -A INPUT -p tcp --dport 80 -j ACCEPT
  iptables -A INPUT -p tcp --dport 8082 -j ACCEPT
  iptables -A INPUT -p tcp --dport 6001:6999 -j ACCEPT
  iptables -A INPUT -p tcp --dport 9001:9999 -j ACCEPT
#
# Accept packets from trusted IP addresses
 # iptables -A INPUT -s 113.105.250.230 -j ACCEPT
 # iptables -A INPUT -s 123.103.15.36 -j ACCEPT
 # iptables -A INPUT -s 221.122.34.136 -j ACCEPT
 # iptables -A INPUT -s 199.88.194.29 -j ACCEPT
#
# Set default policies for INPUT, FORWARD and OUTPUT chains
#
 iptables -P INPUT DROP
 iptables -P FORWARD DROP
 iptables -P OUTPUT ACCEPT
#
# Set access for localhost
#
 iptables -A INPUT -i lo -j ACCEPT
#
# Accept packets belonging to established and related connections
#
 iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
#
#set some port redirect to target ports
#
iptables -t nat -A PREROUTING -p tcp --dport 6002 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6003 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6004 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6005 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6006 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6007 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6008 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6009 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6010 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6011 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6012 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6013 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6014 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6015 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6016 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6017 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6018 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6019 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6020 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6021 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6022 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6023 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6024 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6025 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6026 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6027 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6028 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6029 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6030 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6031 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6032 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6033 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6034 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6035 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6036 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6037 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6038 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6039 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6040 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6041 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6042 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6043 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6044 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6045 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6046 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6047 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6048 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6049 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6050 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6051 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6052 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6053 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6054 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6055 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6056 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6057 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6058 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6059 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6060 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6061 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6062 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6063 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6064 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6065 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6066 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6067 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6068 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6069 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6070 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6071 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6072 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6073 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6074 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6075 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6076 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6077 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6078 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6079 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6080 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6081 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6082 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6083 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6084 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6085 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6086 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6087 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6088 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6089 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6090 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6091 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6092 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6093 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6094 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6095 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6096 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6097 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6098 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6099 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6100 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6101 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6102 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6103 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6104 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6105 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6106 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6107 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6108 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6109 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6110 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6111 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6112 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6113 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6114 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6115 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6116 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6117 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6118 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6119 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6120 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6121 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6122 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6123 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6124 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6125 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6126 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6127 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6128 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6129 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6130 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6131 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6132 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6133 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6134 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6135 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6136 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6137 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6138 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6139 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6140 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6141 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6142 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6143 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6144 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6145 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6146 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6147 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6148 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6149 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6150 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6151 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6152 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6153 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6154 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6155 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6156 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6157 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6158 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6159 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6160 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6161 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6162 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6163 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6164 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6165 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6166 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6167 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6168 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6169 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6170 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6171 -j REDIRECT --to-ports 80
iptables -t nat -A PREROUTING -p tcp --dport 6172 -j REDIRECT --to-ports 80

iptables -t nat -A PREROUTING -p tcp --dport 9002 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9003 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9004 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9005 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9006 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9007 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9008 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9009 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9010 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9011 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9012 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9013 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9014 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9015 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9016 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9017 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9018 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9019 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9020 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9021 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9022 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9023 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9024 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9025 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9026 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9027 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9028 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9029 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9030 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9031 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9032 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9033 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9034 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9035 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9036 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9037 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9038 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9039 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9040 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9041 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9042 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9043 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9044 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9045 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9046 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9047 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9048 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9049 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9050 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9051 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9052 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9053 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9054 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9055 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9056 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9057 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9058 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9059 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9060 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9061 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9062 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9063 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9064 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9065 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9066 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9067 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9068 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9069 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9070 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9071 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9072 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9073 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9074 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9075 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9076 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9077 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9078 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9079 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9080 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9081 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9082 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9083 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9084 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9085 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9086 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9087 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9088 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9089 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9090 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9091 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9092 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9093 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9094 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9095 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9096 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9097 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9098 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9099 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9100 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9101 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9102 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9103 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9104 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9105 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9106 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9107 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9108 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9109 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9110 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9111 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9112 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9113 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9114 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9115 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9116 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9117 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9118 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9119 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9120 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9121 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9122 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9123 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9124 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9125 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9126 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9127 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9128 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9129 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9130 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9131 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9132 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9133 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9134 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9135 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9136 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9137 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9138 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9139 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9140 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9141 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9142 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9143 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9144 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9145 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9146 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9147 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9148 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9149 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9150 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9151 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9152 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9153 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9154 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9155 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9156 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9157 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9158 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9159 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9160 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9161 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9162 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9163 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9164 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9165 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9166 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9167 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9168 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9169 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9170 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9171 -j REDIRECT --to-ports 8082
iptables -t nat -A PREROUTING -p tcp --dport 9172 -j REDIRECT --to-ports 8082

#
# Save settings
#
 /sbin/service iptables save
#
# List rules
#
 iptables -L -v
