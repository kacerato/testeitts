package com.jme3.util;

import com.jme3.system.Annotations;
import java.util.logging.Level;
import java.util.logging.Logger;

@Annotations.Internal
public class BufferAllocatorFactory {
    private static final Logger LOGGER = Logger.getLogger(BufferAllocatorFactory.class.getName());
    public static final String PROPERTY_BUFFER_ALLOCATOR_IMPLEMENTATION = "com.jme3.BufferAllocatorImplementation";

    private BufferAllocatorFactory() {
    }

    @Annotations.Internal
    public static BufferAllocator create() {
        String property = System.getProperty(PROPERTY_BUFFER_ALLOCATOR_IMPLEMENTATION, ReflectionAllocator.class.getName());
        try {
            return (BufferAllocator) Class.forName(property).getDeclaredConstructor(null).newInstance(null);
        } catch (Throwable unused) {
            LOGGER.log(Level.WARNING, "Unable to access {0}", property);
            return new PrimitiveAllocator();
        }
    }
}
