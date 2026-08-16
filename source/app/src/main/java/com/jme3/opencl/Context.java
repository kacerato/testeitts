package com.jme3.opencl;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetManager;
import com.jme3.asset.AssetNotFoundException;
import com.jme3.opencl.Image;
import com.jme3.opencl.OpenCLObject;
import com.jme3.scene.VertexBuffer;
import com.jme3.texture.FrameBuffer;
import com.jme3.texture.Texture;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.JavadocConstants;

public abstract class Context extends AbstractOpenCLObject {
    private static final Logger LOG = Logger.getLogger(Context.class.getName());

    public Context(OpenCLObject.ObjectReleaser objectReleaser) {
        super(objectReleaser);
    }

    private void buildSourcesRec(BufferedReader bufferedReader, StringBuilder sb2, AssetManager assetManager) throws IOException {
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return;
            }
            if (readLine.trim().startsWith("#import ")) {
                String trim = readLine.trim().substring(8).trim();
                if (trim.startsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
                    trim = trim.substring(1);
                }
                if (trim.endsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
                    trim = trim.substring(0, trim.length() - 1);
                }
                AssetInfo locateAsset = assetManager.locateAsset(new AssetKey<>(trim));
                if (locateAsset == null) {
                    throw new AssetNotFoundException("Unable to load source file \"" + trim + JavadocConstants.ANCHOR_PREFIX_END);
                }
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(locateAsset.openStream()));
                try {
                    sb2.append("//-- begin import ");
                    sb2.append(trim);
                    sb2.append(" --\n");
                    buildSourcesRec(bufferedReader2, sb2, assetManager);
                    sb2.append("//-- end import ");
                    sb2.append(trim);
                    sb2.append(" --\n");
                    bufferedReader2.close();
                } catch (Throwable th2) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } else {
                sb2.append(readLine);
                sb2.append('\n');
            }
        }
    }

    public abstract Image bindImage(com.jme3.texture.Image image, Texture.Type type, int i10, MemoryAccess memoryAccess);

    public Image bindImage(Texture texture, int i10, MemoryAccess memoryAccess) {
        return bindImage(texture.getImage(), texture.getType(), i10, memoryAccess);
    }

    public abstract Image bindPureRenderBuffer(FrameBuffer.RenderBuffer renderBuffer, MemoryAccess memoryAccess);

    public Image bindRenderBuffer(FrameBuffer.RenderBuffer renderBuffer, MemoryAccess memoryAccess) {
        return renderBuffer.getTexture() == null ? bindPureRenderBuffer(renderBuffer, memoryAccess) : bindImage(renderBuffer.getTexture(), memoryAccess);
    }

    public abstract Buffer bindVertexBuffer(VertexBuffer vertexBuffer, MemoryAccess memoryAccess);

    public Buffer createBuffer(long j10) {
        return createBuffer(j10, MemoryAccess.READ_WRITE);
    }

    public abstract Buffer createBuffer(long j10, MemoryAccess memoryAccess);

    public Buffer createBufferFromHost(ByteBuffer byteBuffer) {
        return createBufferFromHost(byteBuffer, MemoryAccess.READ_WRITE);
    }

    public abstract Buffer createBufferFromHost(ByteBuffer byteBuffer, MemoryAccess memoryAccess);

    public abstract Image createImage(MemoryAccess memoryAccess, Image.ImageFormat imageFormat, Image.ImageDescriptor imageDescriptor);

    public abstract Program createProgramFromBinary(ByteBuffer byteBuffer, Device device);

    public abstract Program createProgramFromSourceCode(String str);

    public Program createProgramFromSourceCodeWithDependencies(String str, AssetManager assetManager) {
        StringBuilder sb2 = new StringBuilder(str.length());
        try {
            buildSourcesRec(new BufferedReader(new StringReader(str)), sb2, assetManager);
            return createProgramFromSourceCode(sb2.toString());
        } catch (IOException e10) {
            throw new AssetNotFoundException("Unable to read a dependency file", e10);
        }
    }

    public Program createProgramFromSourceFiles(AssetManager assetManager, String... strArr) {
        return createProgramFromSourceFilesWithInclude(assetManager, "", strArr);
    }

    public Program createProgramFromSourceFilesWithInclude(AssetManager assetManager, String str, String... strArr) {
        return createProgramFromSourceFilesWithInclude(assetManager, str, Arrays.asList(strArr));
    }

    public CommandQueue createQueue() {
        return createQueue(getDevices().get(0));
    }

    public abstract CommandQueue createQueue(Device device);

    public abstract List<? extends Device> getDevices();

    public abstract Image.ImageFormat[] querySupportedFormats(MemoryAccess memoryAccess, Image.ImageType imageType);

    public String toString() {
        return "Context (" + ((Object) getDevices()) + ')';
    }

    public Image bindImage(Texture texture, MemoryAccess memoryAccess) {
        return bindImage(texture, 0, memoryAccess);
    }

    public Program createProgramFromSourceFiles(AssetManager assetManager, List<String> list) {
        return createProgramFromSourceFilesWithInclude(assetManager, "", list);
    }

    public Program createProgramFromSourceFilesWithInclude(AssetManager assetManager, String str, List<String> list) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        for (String str2 : list) {
            AssetInfo locateAsset = assetManager.locateAsset(new AssetKey<>(str2));
            if (locateAsset != null) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(locateAsset.openStream()));
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb2.append(readLine);
                            sb2.append('\n');
                        } catch (Throwable th2) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                            break;
                        }
                    }
                    bufferedReader.close();
                } catch (IOException e10) {
                    LOG.log(Level.WARNING, "unable to load source file '" + str2 + "'", (Throwable) e10);
                }
            } else {
                throw new AssetNotFoundException("Unable to load source file \"" + str2 + JavadocConstants.ANCHOR_PREFIX_END);
            }
        }
        return createProgramFromSourceCodeWithDependencies(sb2.toString(), assetManager);
    }

    @Override
    public Context register() {
        super.register();
        return this;
    }
}
