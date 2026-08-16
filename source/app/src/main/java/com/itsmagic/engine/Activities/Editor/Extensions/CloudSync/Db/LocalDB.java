package com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.Db;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class LocalDB {

    @Expose
    public final List<SyncOperation> syncOperationList = new SteppedArrayList();

    @Expose
    public final List<LocalFile> fileList = new SteppedArrayList();

    @Expose
    public final List<InProjectFile> inProjectFiles = new SteppedArrayList();

    public void a(String ipp) {
        synchronized (this.syncOperationList) {
            this.syncOperationList.add(new SyncOperation(ipp, SyncOperation.f70057a));
        }
    }

    public void b(List<InProjectFile> deleted) {
        synchronized (this.inProjectFiles) {
            this.inProjectFiles.removeAll(deleted);
        }
    }

    public void c(String ipp, String localLM, String serverLM) {
        synchronized (this.fileList) {
            try {
                LocalFile d10 = d(ipp);
                if (d10 != null) {
                    d10.ipp = ipp;
                    d10.localLM = localLM;
                    d10.serverLM = serverLM;
                } else {
                    LocalFile localFile = new LocalFile();
                    localFile.ipp = ipp;
                    localFile.localLM = localLM;
                    localFile.serverLM = serverLM;
                    this.fileList.add(localFile);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public LocalFile d(String ipp) {
        synchronized (this.fileList) {
            try {
                for (LocalFile localFile : this.fileList) {
                    if (localFile.ipp.equals(ipp)) {
                        return localFile;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e(String ipp, String localLM) {
        synchronized (this.inProjectFiles) {
            for (int i10 = 0; i10 < this.inProjectFiles.size(); i10++) {
                try {
                    InProjectFile inProjectFile = this.inProjectFiles.get(i10);
                    if (inProjectFile.ipp.equals(ipp)) {
                        inProjectFile.localLM = localLM;
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            InProjectFile inProjectFile2 = new InProjectFile();
            inProjectFile2.ipp = ipp;
            inProjectFile2.localLM = localLM;
            this.inProjectFiles.add(inProjectFile2);
        }
    }

    public SyncOperation f(int at) {
        SyncOperation syncOperation;
        synchronized (this.syncOperationList) {
            syncOperation = this.syncOperationList.get(at);
        }
        return syncOperation;
    }

    public int g() {
        int size;
        synchronized (this.syncOperationList) {
            size = this.syncOperationList.size();
        }
        return size;
    }

    public InProjectFile h(int at) {
        InProjectFile inProjectFile;
        synchronized (this.inProjectFiles) {
            inProjectFile = this.inProjectFiles.get(at);
        }
        return inProjectFile;
    }

    public int i() {
        int size;
        synchronized (this.inProjectFiles) {
            size = this.inProjectFiles.size();
        }
        return size;
    }

    public void j(String ipp) {
        synchronized (this.fileList) {
            try {
                LocalFile d10 = d(ipp);
                if (d10 != null) {
                    this.fileList.remove(d10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void k(SyncOperation operation) {
        synchronized (this.syncOperationList) {
            this.syncOperationList.remove(operation);
        }
    }

    public void l(List<SyncOperation> executed) {
        synchronized (this.syncOperationList) {
            this.syncOperationList.removeAll(executed);
        }
    }
}
