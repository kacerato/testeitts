package org.openjdk.tools.sjavac.server;

import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;
import org.openjdk.tools.sjavac.Log;

public class PortFileMonitor {
    private static final int CHECK_PORTFILE_INTERVAL = 5000;
    private final PortFile portFile;
    private final SjavacServer server;
    private final Timer timer = new Timer();

    public PortFileMonitor(PortFile portFile, SjavacServer sjavacServer) {
        this.portFile = portFile;
        this.server = sjavacServer;
    }

    public void shutdown() {
        this.timer.cancel();
    }

    public void start() {
        final Log log = Log.get();
        this.timer.schedule(new TimerTask() {
            @Override
            public void run() {
                Log.setLogForCurrentThread(log);
                Log.debug("Checking port file status...");
                try {
                    if (!PortFileMonitor.this.portFile.exists()) {
                        PortFileMonitor.this.server.shutdown("Quitting because portfile was deleted!");
                    } else if (PortFileMonitor.this.portFile.markedForStop()) {
                        PortFileMonitor.this.server.shutdown("Quitting because a portfile.stop file was found!");
                    } else if (!PortFileMonitor.this.portFile.stillMyValues()) {
                        PortFileMonitor.this.server.shutdown("Quitting because portfile is now owned by another javac server!");
                    }
                } catch (IOException e10) {
                    Log.error("IOException caught in PortFileMonitor.");
                    Log.debug(e10);
                } catch (InterruptedException e11) {
                    Thread.currentThread().interrupt();
                    Log.error(e11);
                }
            }
        }, 0L, 5000L);
    }
}
