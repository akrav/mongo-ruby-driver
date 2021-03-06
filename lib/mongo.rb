module Mongo
  ASCENDING   =  1
  DESCENDING  = -1
  GEO2D       = '2d'
  GEO2DSPHERE = '2dsphere'
  GEOHAYSTACK = 'geoHaystack'
  TEXT        = 'text'
  HASHED      = 'hashed'
  INDEX_TYPES = [ ASCENDING,
                  DESCENDING,
                  GEO2D,
                  GEO2DSPHERE,
                  GEOHAYSTACK,
                  TEXT,
                  HASHED
                ]

  DEFAULT_MAX_BSON_SIZE = 4 * 1024 * 1024
  DEFAULT_MAX_MESSAGE_SIZE = DEFAULT_MAX_BSON_SIZE * 2

  module Constants
    OP_REPLY        = 1
    OP_MSG          = 1000
    OP_UPDATE       = 2001
    OP_INSERT       = 2002
    OP_QUERY        = 2004
    OP_GET_MORE     = 2005
    OP_DELETE       = 2006
    OP_KILL_CURSORS = 2007

    OP_QUERY_TAILABLE          = 2 ** 1
    OP_QUERY_SLAVE_OK          = 2 ** 2
    OP_QUERY_OPLOG_REPLAY      = 2 ** 3
    OP_QUERY_NO_CURSOR_TIMEOUT = 2 ** 4
    OP_QUERY_AWAIT_DATA        = 2 ** 5
    OP_QUERY_EXHAUST           = 2 ** 6

    REPLY_CURSOR_NOT_FOUND     = 2 ** 0
    REPLY_QUERY_FAILURE        = 2 ** 1
    REPLY_SHARD_CONFIG_STALE   = 2 ** 2
    REPLY_AWAIT_CAPABLE        = 2 ** 3
  end
end

require 'bson'

require 'mongo/util/thread_local_variable_manager'
require 'mongo/util/conversions'
require 'mongo/util/support'
require 'mongo/util/read_preference'
require 'mongo/util/write_concern'
require 'mongo/util/core_ext'
require 'mongo/util/logging'
require 'mongo/util/node'
require 'mongo/util/pool'
require 'mongo/util/pool_manager'
require 'mongo/util/sharding_pool_manager'
require 'mongo/util/server_version'
require 'mongo/util/socket_util'
require 'mongo/util/ssl_socket'
require 'mongo/util/tcp_socket'
require 'mongo/util/unix_socket'
require 'mongo/util/uri_parser'


require 'mongo/networking'
require 'mongo/mongo_client'
require 'mongo/mongo_replica_set_client'
require 'mongo/mongo_sharded_client'
require 'mongo/legacy'
require 'mongo/collection'
require 'mongo/cursor'
require 'mongo/db'
require 'mongo/exceptions'
require 'mongo/gridfs/grid_ext'
require 'mongo/gridfs/grid'
require 'mongo/gridfs/grid_io'
require 'mongo/gridfs/grid_file_system'
