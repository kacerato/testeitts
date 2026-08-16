package com.jme3.opencl;

import com.jme3.system.JmeSystem;
import com.jme3.util.BufferUtils;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProgramCache {
    private static final String FILE_EXTENSION = ".clbin";
    private static final Logger LOG = Logger.getLogger(ProgramCache.class.getName());
    private final Context context;
    private final Device device;
    private final File tmpFolder;

    public ProgramCache() {
        this.context = null;
        this.device = null;
        this.tmpFolder = null;
    }

    public void clearCache() {
        File file = this.tmpFolder;
        if (file == null) {
            return;
        }
        for (File file2 : file.listFiles()) {
            if (file2.isFile() && file2.getName().endsWith(FILE_EXTENSION)) {
                file2.delete();
            }
        }
    }

    public String getCleanFileName(String str) {
        return str.replaceAll("[^a-zA-Z0-9.-]", "") + FILE_EXTENSION;
    }

    public Program loadFromCache(String str, String str2) {
        if (this.tmpFolder == null) {
            return null;
        }
        File file = new File(this.tmpFolder, getCleanFileName(str));
        if (!file.exists()) {
            Logger logger = LOG;
            Level level = Level.FINE;
            if (logger.isLoggable(level)) {
                logger.log(level, "Cache file {0} does not exist", file.getAbsolutePath());
            }
            return null;
        }
        try {
            try {
                Program createProgramFromBinary = this.context.createProgramFromBinary(BufferUtils.createByteBuffer(Files.readAllBytes(file.toPath())), this.device);
                try {
                    createProgramFromBinary.build(str2, this.device);
                    return createProgramFromBinary;
                } catch (OpenCLException e10) {
                    LOG.log(Level.FINE, "Unable to build program", (Throwable) e10);
                    return null;
                }
            } catch (OpenCLException e11) {
                LOG.log(Level.FINE, "Unable to create program from binary", (Throwable) e11);
                return null;
            }
        } catch (IOException e12) {
            LOG.log(Level.FINE, "Unable to read cache file", (Throwable) e12);
            return null;
        }
    }

    public void saveToCache(String str, Program program) {
        if (this.tmpFolder == null) {
            return;
        }
        File file = new File(this.tmpFolder, getCleanFileName(str));
        try {
            ByteBuffer binary = program.getBinary(this.device);
            byte[] bArr = new byte[binary.remaining()];
            binary.get(bArr);
            try {
                Files.write(file.toPath(), bArr, new OpenOption[0]);
            } catch (IOException e10) {
                LOG.log(Level.WARNING, "Unable to save program binaries to the cache", (Throwable) e10);
            }
        } catch (OpenCLException | UnsupportedOperationException e11) {
            LOG.log(Level.WARNING, "Unable to retrieve the program binaries", e11);
        }
    }

    public ProgramCache(Context context, Device device) {
        this.context = context;
        this.device = device;
        if (JmeSystem.isLowPermissions()) {
            this.tmpFolder = null;
        } else {
            this.tmpFolder = JmeSystem.getStorageFolder();
        }
    }

    public ProgramCache(Context context) {
        this(context, context.getDevices().get(0));
    }

    public Program loadFromCache(String str) {
        return loadFromCache(str, "");
    }
}
