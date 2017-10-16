#if [ `psql -h kong-database -U postgres -l |awk -F'|' '{print $1}' |grep 'kong'` ] ; then
#  echo 'データベースは存在します。'
#  psql -h kong-database -U postgres -l |awk -F'|' '{print $1}' |grep 'kong'
#else
#  echo 'データベースが存在しません。作成を行います。'
#  psql -h kong-database -U postgres -l |awk -F'|' '{print $1}' |grep 'kong'
#fi

#/usr/local/openresty/nginx/sbin/nginx -c /usr/local/kong/nginx.conf -p /usr/local/kong/
kong migrations up
echo "kongを起動します"
kong start
