package com.itsmagic.engine.Activities.Editor.Extensions.CloudSync;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class LocalReport {

    @Expose
    public final List<LocalFileReport> reportList = new SteppedArrayList();

    public static class LocalFileReport {

        @Expose
        public String ipp;

        @Expose
        public String lastModified;
    }

    public void a(String ipp, String utclastModified) {
        LocalFileReport localFileReport = new LocalFileReport();
        localFileReport.ipp = ipp;
        localFileReport.lastModified = utclastModified;
        this.reportList.add(localFileReport);
    }

    public LocalFileReport b(String ipp) {
        synchronized (this.reportList) {
            try {
                for (LocalFileReport localFileReport : this.reportList) {
                    if (localFileReport.ipp.equals(ipp)) {
                        return localFileReport;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
