package com.ardor3d.util;

import com.ardor3d.annotation.MainThread;
import com.ardor3d.image.Image;
import com.ardor3d.image.Texture;
import com.ardor3d.image.Texture2D;
import com.ardor3d.image.Texture3D;
import com.ardor3d.image.TextureCubeMap;
import com.ardor3d.image.TextureStoreFormat;
import com.ardor3d.image.util.ImageLoaderUtil;
import com.ardor3d.image.util.ImageUtils;
import com.ardor3d.renderer.ContextCleanListener;
import com.ardor3d.renderer.ContextManager;
import com.ardor3d.renderer.RenderContext;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.RendererCallable;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.ardor3d.util.resource.ResourceSource;
import com.google.common.collect.C12566s;
import com.google.common.collect.O1;
import com.google.common.collect.S1;
import java.lang.ref.ReferenceQueue;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.logging.Logger;

public final class TextureManager {
    private static final Logger logger = Logger.getLogger(TextureManager.class.getName());
    private static Map<TextureKey, Texture> _tCache = new O1().l().m().i();
    private static ReferenceQueue<TextureKey> _textureRefQueue = new ReferenceQueue<>();

    static {
        ContextManager.addContextCleanListener(new ContextCleanListener() {
            @Override
            public void cleanForContext(RenderContext renderContext) {
                TextureManager.cleanAllTextures(null, renderContext, null);
            }
        });
    }

    private TextureManager() {
    }

    public static void addToCache(Texture texture) {
        if (TextureState.getDefaultTexture() == null || !(texture == TextureState.getDefaultTexture() || texture.getImage() == TextureState.getDefaultTextureImage())) {
            _tCache.put(texture.getTextureKey(), texture);
        }
    }

    public static void cleanAllTextures(Renderer renderer) {
        cleanAllTextures(renderer, null);
    }

    public static void cleanExpiredTextures(Renderer renderer) {
        cleanExpiredTextures(renderer, null);
    }

    public static Texture findCachedTexture(TextureKey textureKey) {
        return _tCache.get(textureKey);
    }

    private static S1<Object, Integer> gatherGCdIds() {
        C12566s c12566s = null;
        while (true) {
            ContextIdReference contextIdReference = (ContextIdReference) _textureRefQueue.poll();
            if (contextIdReference == null) {
                return c12566s;
            }
            if (c12566s == null) {
                c12566s = C12566s.M();
            }
            if (Constants.useMultipleContexts) {
                for (Object obj : contextIdReference.getContextObjects()) {
                    int i10 = contextIdReference.get(obj);
                    if (i10 != 0) {
                        c12566s.put(obj, Integer.valueOf(i10));
                    }
                }
            } else {
                int i11 = contextIdReference.get(null);
                if (i11 != 0) {
                    c12566s.put(ContextManager.getCurrentContext().getGlContextRep(), Integer.valueOf(i11));
                }
            }
            contextIdReference.clear();
        }
    }

    public static ReferenceQueue<TextureKey> getRefQueue() {
        return _textureRefQueue;
    }

    private static void handleTextureDelete(Renderer renderer, final S1<Object, Integer> s12, Map<Object, Future<Void>> map) {
        Object glContextRep = (renderer == null || ContextManager.getCurrentContext() == null) ? null : ContextManager.getCurrentContext().getGlContextRep();
        for (final Object obj : s12.keySet()) {
            if (renderer == null || !obj.equals(glContextRep)) {
                Future<Void> render = GameTaskQueueManager.getManager(ContextManager.getContextForRef(obj)).render(new RendererCallable<Void>() {
                    @Override
                    public Void call() throws Exception {
                        getRenderer().deleteTextureIds(S1.this.y(obj));
                        return null;
                    }
                });
                if (map != null) {
                    map.put(obj, render);
                }
            } else {
                renderer.deleteTextureIds(s12.y(obj));
            }
        }
    }

    public static Texture load(String str, Texture.MinificationFilter minificationFilter, boolean z10) {
        return load(ResourceLocatorTool.locateResource(ResourceLocatorTool.TYPE_TEXTURE, str), minificationFilter, TextureStoreFormat.GuessNoCompressedFormat, z10);
    }

    public static Texture loadFromImage(Image image, Texture.MinificationFilter minificationFilter) {
        return loadFromImage(image, minificationFilter, TextureStoreFormat.GuessNoCompressedFormat);
    }

    public static Texture loadFromKey(TextureKey textureKey, Image image, Texture texture) {
        if (textureKey == null) {
            logger.warning("TextureKey is null, cannot load");
            return TextureState.getDefaultTexture();
        }
        Texture findCachedTexture = findCachedTexture(textureKey);
        if (findCachedTexture != null) {
            if (texture != null) {
                findCachedTexture.createSimpleClone(texture);
                return texture;
            }
            Texture createSimpleClone = findCachedTexture.createSimpleClone();
            if (createSimpleClone.getTextureKey() == null) {
                createSimpleClone.setTextureKey(textureKey);
            }
            return createSimpleClone;
        }
        if (image == null) {
            image = ImageLoaderUtil.loadImage(textureKey.getSource(), textureKey.isFlipped());
        }
        if (image == null) {
            logger.warning("(image null) Could not load: " + ((Object) textureKey.getSource()));
            return TextureState.getDefaultTexture();
        }
        if (texture == null) {
            texture = image.getDataSize() == 6 ? new TextureCubeMap() : image.getDataSize() > 1 ? new Texture3D() : new Texture2D();
        }
        texture.setTextureKey(textureKey);
        texture.setImage(image);
        texture.setMinificationFilter(textureKey.getMinificationFilter());
        texture.setTextureStoreFormat(ImageUtils.getTextureStoreFormat(textureKey.getFormat(), texture.getImage()));
        addToCache(texture);
        return texture;
    }

    @MainThread
    public static void preloadCache(Renderer renderer) {
        for (Texture texture : _tCache.values()) {
            if (texture != null && texture.getTextureKey().getSource() != null) {
                renderer.loadTexture(texture, 0);
            }
        }
    }

    public static Texture removeFromCache(TextureKey textureKey) {
        return _tCache.remove(textureKey);
    }

    public static void cleanAllTextures(Renderer renderer, Map<Object, Future<Void>> map) {
        S1<Object, Integer> gatherGCdIds = gatherGCdIds();
        for (TextureKey textureKey : _tCache.o()) {
            if (gatherGCdIds == null) {
                gatherGCdIds = C12566s.M();
            }
            if (Constants.useMultipleContexts) {
                for (Object obj : textureKey.getContextObjects()) {
                    gatherGCdIds.put(obj, Integer.valueOf(textureKey.getTextureIdForContext(obj)));
                }
            } else {
                gatherGCdIds.put(ContextManager.getCurrentContext().getGlContextRep(), Integer.valueOf(textureKey.getTextureIdForContext(null)));
            }
            textureKey.removeFromIdCache();
        }
        if (gatherGCdIds == null || gatherGCdIds.isEmpty()) {
            return;
        }
        handleTextureDelete(renderer, gatherGCdIds, map);
    }

    public static void cleanExpiredTextures(Renderer renderer, Map<Object, Future<Void>> map) {
        S1<Object, Integer> gatherGCdIds = gatherGCdIds();
        if (gatherGCdIds != null) {
            handleTextureDelete(renderer, gatherGCdIds, map);
        }
    }

    public static Texture load(String str, Texture.MinificationFilter minificationFilter, TextureStoreFormat textureStoreFormat, boolean z10) {
        return load(ResourceLocatorTool.locateResource(ResourceLocatorTool.TYPE_TEXTURE, str), minificationFilter, textureStoreFormat, z10);
    }

    public static Texture loadFromImage(Image image, Texture.MinificationFilter minificationFilter, TextureStoreFormat textureStoreFormat) {
        return loadFromKey(TextureKey.getKey(null, false, textureStoreFormat, "img_" + image.hashCode(), minificationFilter), image, null);
    }

    public static Texture load(ResourceSource resourceSource, Texture.MinificationFilter minificationFilter, boolean z10) {
        return load(resourceSource, minificationFilter, TextureStoreFormat.GuessNoCompressedFormat, z10);
    }

    public static Texture load(ResourceSource resourceSource, Texture.MinificationFilter minificationFilter, TextureStoreFormat textureStoreFormat, boolean z10) {
        if (resourceSource == null) {
            logger.warning("Could not load image...  source was null. defaultTexture used.");
            return TextureState.getDefaultTexture();
        }
        return loadFromKey(TextureKey.getKey(resourceSource, z10, textureStoreFormat, minificationFilter), null, null);
    }

    public static void cleanAllTextures(Renderer renderer, RenderContext renderContext, Map<Object, Future<Void>> map) {
        S1<Object, Integer> gatherGCdIds = gatherGCdIds();
        Object glContextRep = renderContext.getGlContextRep();
        for (TextureKey textureKey : _tCache.o()) {
            if (gatherGCdIds == null) {
                gatherGCdIds = C12566s.M();
            }
            int textureIdForContext = textureKey.getTextureIdForContext(glContextRep);
            if (textureIdForContext != 0) {
                gatherGCdIds.put(renderContext.getGlContextRep(), Integer.valueOf(textureIdForContext));
                textureKey.removeFromIdCache(glContextRep);
            }
        }
        if (gatherGCdIds.isEmpty()) {
            return;
        }
        handleTextureDelete(renderer, gatherGCdIds, map);
    }
}
