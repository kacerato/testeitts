package org.apache.commons.math3.geometry.euclidean.twod.hull;

import java.util.Collection;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.hull.ConvexHull;
import org.apache.commons.math3.geometry.hull.ConvexHullGenerator;

public interface ConvexHullGenerator2D extends ConvexHullGenerator<Euclidean2D, Vector2D> {
    @Override
    ConvexHull<Euclidean2D, Vector2D> generate(Collection<Vector2D> collection) throws NullArgumentException, ConvergenceException;
}
