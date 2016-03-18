#/bin/bash
nfsdir="/var/export/host1"
mkdir -p $nfsdir

mkdir -p ${nfsdir}/vol1
mkdir -p ${nfsdir}/vol2
mkdir -p ${nfsdir}/vol3
mkdir -p ${nfsdir}/vol4
mkdir -p ${nfsdir}/vol5
chown -R nfsnobody:nfsnobody ${nfsdir}
chmod -R 777 ${nfsdir}
echo "${nfsdir}/vol1 *(rw,sync,all_squash)" >>/etc/exports
echo "${nfsdir}/vol2 *(rw,sync,all_squash)" >>/etc/exports
echo "${nfsdir}/vol3 *(rw,sync,all_squash)" >>/etc/exports
echo "${nfsdir}/vol4 *(rw,sync,all_squash)" >>/etc/exports
echo "${nfsdir}/vol5 *(rw,sync,all_squash)" >>/etc/exports

systemctl restart nfs
