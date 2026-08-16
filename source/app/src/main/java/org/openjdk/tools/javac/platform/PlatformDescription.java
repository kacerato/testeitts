package org.openjdk.tools.javac.platform;

import java.io.Closeable;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.openjdk.javax.annotation.processing.Processor;
import org.openjdk.source.util.Plugin;

public interface PlatformDescription extends Closeable {

    public interface PluginInfo<T> {
        String getName();

        Map<String, String> getOptions();

        T getPlugin();
    }

    @Override
    void close() throws IOException;

    List<String> getAdditionalOptions();

    List<PluginInfo<Processor>> getAnnotationProcessors();

    Collection<Path> getPlatformPath();

    List<PluginInfo<Plugin>> getPlugins();

    String getSourceVersion();

    String getTargetVersion();
}
