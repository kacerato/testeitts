package org.openjdk.tools.sjavac.server;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.FileLockInterruptionException;
import java.util.concurrent.Semaphore;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.sjavac.Log;
import org.openjdk.tools.sjavac.client.PortFileInaccessibleException;

public class PortFile {
    private static final int magicNr = 4468;
    private FileChannel channel;
    private File file;
    private String filename;
    private long myServerCookie;
    private int myServerPort;
    private RandomAccessFile rwfile;
    private long serverCookie;
    private int serverPort;
    private File stopFile;
    private Semaphore lockSem = new Semaphore(1);
    private boolean containsPortInfo = false;
    private FileLock lock = null;

    public PortFile(String str) {
        this.filename = str;
        this.file = new File(this.filename);
        this.stopFile = new File(this.filename + ".stop");
    }

    private long getServerStartupTimeoutSeconds() {
        if (System.getProperty("serverStartupTimeout") == null) {
            return 60L;
        }
        try {
            return Integer.parseInt(r0);
        } catch (NumberFormatException unused) {
            return 60L;
        }
    }

    private void initializeChannel() throws PortFileInaccessibleException {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.file, "rw");
            this.rwfile = randomAccessFile;
            this.channel = randomAccessFile.getChannel();
        } catch (FileNotFoundException e10) {
            throw new PortFileInaccessibleException(e10);
        }
    }

    public boolean containsPortInfo() {
        return this.containsPortInfo;
    }

    public void delete() throws IOException, InterruptedException {
        this.rwfile.close();
        this.file.delete();
        for (int i10 = 0; i10 < 10 && this.file.exists(); i10++) {
            Thread.sleep(1000L);
        }
        if (this.file.exists()) {
            throw new IOException("Failed to delete file.");
        }
    }

    public boolean exists() throws IOException {
        return this.file.exists();
    }

    public long getCookie() {
        Assert.check(this.containsPortInfo);
        return this.serverCookie;
    }

    public String getFilename() {
        return this.filename;
    }

    public int getPort() {
        Assert.check(this.containsPortInfo);
        return this.serverPort;
    }

    public void getValues() {
        this.containsPortInfo = false;
        if (this.lock == null) {
            return;
        }
        try {
            if (this.rwfile.length() > 0) {
                this.rwfile.seek(0L);
                int readInt = this.rwfile.readInt();
                this.serverPort = this.rwfile.readInt();
                this.serverCookie = this.rwfile.readLong();
                if (readInt == magicNr) {
                    this.containsPortInfo = true;
                } else {
                    this.containsPortInfo = false;
                }
            }
        } catch (IOException unused) {
            this.containsPortInfo = false;
        }
    }

    public void lock() throws IOException, InterruptedException {
        if (this.channel == null) {
            initializeChannel();
        }
        this.lockSem.acquire();
        this.lock = this.channel.lock();
    }

    public boolean markedForStop() throws IOException {
        if (!this.stopFile.exists()) {
            return false;
        }
        try {
            this.stopFile.delete();
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    public void setValues(int i10, long j10) throws IOException {
        Assert.check(this.lock != null);
        this.rwfile.seek(0L);
        this.rwfile.writeInt(magicNr);
        this.rwfile.writeInt(i10);
        this.rwfile.writeLong(j10);
        this.myServerPort = i10;
        this.myServerCookie = j10;
    }

    public boolean stillMyValues() throws IOException, FileNotFoundException, InterruptedException {
        while (true) {
            try {
                lock();
                getValues();
                unlock();
                if (this.containsPortInfo && this.serverPort == this.myServerPort) {
                    return this.serverCookie == this.myServerCookie;
                }
                return false;
            } catch (ClosedChannelException unused) {
                return false;
            } catch (FileLockInterruptionException unused2) {
            }
        }
    }

    public void unlock() throws IOException {
        FileLock fileLock = this.lock;
        if (fileLock == null) {
            return;
        }
        fileLock.release();
        this.lock = null;
        this.lockSem.release();
    }

    public void waitForValidValues() throws IOException, InterruptedException {
        long currentTimeMillis = System.currentTimeMillis();
        long serverStartupTimeoutSeconds = (getServerStartupTimeoutSeconds() * 1000) + currentTimeMillis;
        while (true) {
            Log.debug("Looking for valid port file values...");
            if (exists()) {
                lock();
                getValues();
                unlock();
            }
            if (this.containsPortInfo) {
                Log.debug("Valid port file values found after " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
                return;
            }
            if (System.currentTimeMillis() > serverStartupTimeoutSeconds) {
                throw new IOException("No port file values materialized. Giving up after " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            }
            Thread.sleep(500L);
        }
    }
}
