package com.itsmagic.engine.Activities.Editor.Extensions.CloudSync;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class RemoteReport {

    @Expose
    public final List<RemoteFileReport> reportList = new SteppedArrayList();

    public static class RemoteFileReport {

        @Expose
        public String ipp;

        @Expose
        public String mode = "";

        @Expose
        public String serverLM;
    }

    public RemoteFileReport a(String ipp) {
        synchronized (this.reportList) {
            try {
                for (RemoteFileReport remoteFileReport : this.reportList) {
                    if (remoteFileReport.ipp.equals(ipp)) {
                        return remoteFileReport;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
