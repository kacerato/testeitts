package com.jme3.math;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.TempVars;
import java.io.IOException;
import java.io.Serializable;

public class LineSegment implements Cloneable, Savable, Serializable {
    static final long serialVersionUID = 1;
    private Vector3f direction;
    private float extent;
    private Vector3f origin;

    public LineSegment() {
        this.origin = new Vector3f();
        this.direction = new Vector3f();
    }

    public float distance(Vector3f vector3f) {
        return FastMath.sqrt(distanceSquared(vector3f));
    }

    public float distanceSquared(Vector3f vector3f) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f2 = tempVars.vect1;
        vector3f.subtract(this.origin, vector3f2);
        float dot = this.direction.dot(vector3f2);
        float f10 = this.extent;
        if ((-f10) >= dot) {
            this.origin.subtract(this.direction.mult(f10, vector3f2), vector3f2);
        } else if (dot < f10) {
            this.origin.add(this.direction.mult(dot, vector3f2), vector3f2);
        } else {
            this.origin.add(this.direction.mult(f10, vector3f2), vector3f2);
        }
        vector3f2.subtractLocal(vector3f);
        float lengthSquared = vector3f2.lengthSquared();
        tempVars.release();
        return lengthSquared;
    }

    public Vector3f getDirection() {
        return this.direction;
    }

    public float getExtent() {
        return this.extent;
    }

    public Vector3f getNegativeEnd(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        return this.origin.subtract(this.direction.mult(this.extent, vector3f), vector3f);
    }

    public Vector3f getOrigin() {
        return this.origin;
    }

    public Vector3f getPositiveEnd(Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        return this.origin.add(this.direction.mult(this.extent, vector3f), vector3f);
    }

    public boolean isPointInsideBounds(Vector3f vector3f) {
        return isPointInsideBounds(vector3f, Float.MIN_VALUE);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        Vector3f vector3f = Vector3f.ZERO;
        this.origin = (Vector3f) capsule.readSavable("origin", vector3f.m1292clone());
        this.direction = (Vector3f) capsule.readSavable("direction", vector3f.m1292clone());
        this.extent = capsule.readFloat("extent", 0.0f);
    }

    public void set(LineSegment lineSegment) {
        this.origin = new Vector3f(lineSegment.getOrigin());
        this.direction = new Vector3f(lineSegment.getDirection());
        this.extent = lineSegment.getExtent();
    }

    public void setDirection(Vector3f vector3f) {
        this.direction = vector3f;
    }

    public void setExtent(float f10) {
        this.extent = f10;
    }

    public void setOrigin(Vector3f vector3f) {
        this.origin = vector3f;
    }

    public String toString() {
        return getClass().getSimpleName() + " [Origin: " + ((Object) this.origin) + "  Direction: " + ((Object) this.direction) + "  Extent: " + this.extent + "]";
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        Vector3f vector3f = this.origin;
        Vector3f vector3f2 = Vector3f.ZERO;
        capsule.write(vector3f, "origin", vector3f2);
        capsule.write(this.direction, "direction", vector3f2);
        capsule.write(this.extent, "extent", 0.0f);
    }

    public LineSegment m1281clone() {
        try {
            LineSegment lineSegment = (LineSegment) super.clone();
            lineSegment.direction = this.direction.m1292clone();
            lineSegment.origin = this.origin.m1292clone();
            return lineSegment;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public float distance(LineSegment lineSegment) {
        return FastMath.sqrt(distanceSquared(lineSegment));
    }

    public boolean isPointInsideBounds(Vector3f vector3f, float f10) {
        return FastMath.abs(vector3f.f81611x - this.origin.f81611x) <= FastMath.abs(this.direction.f81611x * this.extent) + f10 && FastMath.abs(vector3f.f81612y - this.origin.f81612y) <= FastMath.abs(this.direction.f81612y * this.extent) + f10 && FastMath.abs(vector3f.f81613z - this.origin.f81613z) <= FastMath.abs(this.direction.f81613z * this.extent) + f10;
    }

    public float distance(Ray ray) {
        return FastMath.sqrt(distanceSquared(ray));
    }

    public LineSegment(LineSegment lineSegment) {
        this.origin = new Vector3f(lineSegment.getOrigin());
        this.direction = new Vector3f(lineSegment.getDirection());
        this.extent = lineSegment.getExtent();
    }

    public LineSegment(Vector3f vector3f, Vector3f vector3f2, float f10) {
        this.origin = vector3f;
        this.direction = vector3f2;
        this.extent = f10;
    }

    public LineSegment(Vector3f vector3f, Vector3f vector3f2) {
        this.origin = new Vector3f((vector3f.f81611x + vector3f2.f81611x) * 0.5f, (vector3f.f81612y + vector3f2.f81612y) * 0.5f, (vector3f.f81613z + vector3f2.f81613z) * 0.5f);
        Vector3f subtract = vector3f2.subtract(vector3f);
        this.direction = subtract;
        this.extent = subtract.length() * 0.5f;
        this.direction.normalizeLocal();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0091, code lost:
    
        if (r0 <= r2) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0093, code lost:
    
        r2 = -r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a7, code lost:
    
        if (r0 <= r2) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float distanceSquared(LineSegment lineSegment) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float extent;
        float extent2;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float extent3;
        float extent4;
        float f21;
        float f22;
        float f23;
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        this.origin.subtract(lineSegment.getOrigin(), vector3f);
        float f24 = -this.direction.dot(lineSegment.getDirection());
        float dot = vector3f.dot(this.direction);
        float f25 = -vector3f.dot(lineSegment.getDirection());
        float lengthSquared = vector3f.lengthSquared();
        tempVars.release();
        float abs = FastMath.abs(1.0f - (f24 * f24));
        if (abs >= 1.1920929E-7f) {
            float f26 = (f24 * f25) - dot;
            float f27 = (f24 * dot) - f25;
            float f28 = this.extent * abs;
            float extent5 = lineSegment.getExtent() * abs;
            if (f26 >= (-f28)) {
                if (f26 <= f28) {
                    if (f27 < (-extent5)) {
                        f21 = -lineSegment.getExtent();
                        f22 = -((f24 * f21) + dot);
                        f23 = this.extent;
                        if (f22 >= (-f23)) {
                        }
                        f23 = -f23;
                        f22 = f23 - (f22 * 2.0f);
                    } else if (f27 <= extent5) {
                        float f29 = 1.0f / abs;
                        float f30 = f26 * f29;
                        float f31 = f27 * f29;
                        f18 = (((f24 * f31) + f30 + (dot * 2.0f)) * f30) + (f31 * ((f24 * f30) + f31 + (f25 * 2.0f)));
                    } else {
                        f21 = lineSegment.getExtent();
                        f22 = -((f24 * f21) + dot);
                        f23 = this.extent;
                        if (f22 >= (-f23)) {
                        }
                        f23 = -f23;
                        f22 = f23 - (f22 * 2.0f);
                    }
                    f10 = (f23 * f22) + (f21 * ((f25 * 2.0f) + f21)) + lengthSquared;
                } else if (f27 < (-extent5)) {
                    f11 = -lineSegment.getExtent();
                    f12 = -((f24 * f11) + dot);
                    f19 = this.extent;
                    if (f12 >= (-f19)) {
                        if (f12 > f19) {
                            f20 = -((f24 * f19) + f25);
                            if (f20 > lineSegment.getExtent()) {
                                extent4 = lineSegment.getExtent();
                                f20 = extent4 - (f20 * 2.0f);
                                f18 = (extent4 * f20) + (f19 * ((dot * 2.0f) + f19));
                            } else {
                                if (f20 < (-lineSegment.getExtent())) {
                                    extent3 = lineSegment.getExtent();
                                    extent4 = -extent3;
                                    f20 = extent4 - (f20 * 2.0f);
                                    f18 = (extent4 * f20) + (f19 * ((dot * 2.0f) + f19));
                                }
                                extent4 = -f20;
                                f18 = (extent4 * f20) + (f19 * ((dot * 2.0f) + f19));
                            }
                        }
                        f16 = (-f12) * f12;
                        f17 = f11 * ((f25 * 2.0f) + f11);
                    }
                    float f32 = -f19;
                    f16 = f32 * (f32 - (f12 * 2.0f));
                    f17 = f11 * ((f25 * 2.0f) + f11);
                } else if (f27 <= extent5) {
                    f14 = this.extent;
                    f15 = -((f24 * f14) + f25);
                    if (f15 < (-lineSegment.getExtent())) {
                        extent2 = lineSegment.getExtent();
                        extent = -extent2;
                        f15 = extent - (f15 * 2.0f);
                        f16 = extent * f15;
                        f17 = f14 * ((dot * 2.0f) + f14);
                    } else {
                        if (f15 > lineSegment.getExtent()) {
                            extent = lineSegment.getExtent();
                            f15 = extent - (f15 * 2.0f);
                            f16 = extent * f15;
                            f17 = f14 * ((dot * 2.0f) + f14);
                        }
                        extent = -f15;
                        f16 = extent * f15;
                        f17 = f14 * ((dot * 2.0f) + f14);
                    }
                } else {
                    f11 = lineSegment.getExtent();
                    f12 = -((f24 * f11) + dot);
                    f19 = this.extent;
                    if (f12 >= (-f19)) {
                        if (f12 > f19) {
                            f20 = -((f24 * f19) + f25);
                            if (f20 < (-lineSegment.getExtent())) {
                                extent3 = lineSegment.getExtent();
                                extent4 = -extent3;
                                f20 = extent4 - (f20 * 2.0f);
                                f18 = (extent4 * f20) + (f19 * ((dot * 2.0f) + f19));
                            } else {
                                if (f20 > lineSegment.getExtent()) {
                                    extent4 = lineSegment.getExtent();
                                    f20 = extent4 - (f20 * 2.0f);
                                    f18 = (extent4 * f20) + (f19 * ((dot * 2.0f) + f19));
                                }
                                extent4 = -f20;
                                f18 = (extent4 * f20) + (f19 * ((dot * 2.0f) + f19));
                            }
                        }
                        f16 = (-f12) * f12;
                        f17 = f11 * ((f25 * 2.0f) + f11);
                    }
                    float f322 = -f19;
                    f16 = f322 * (f322 - (f12 * 2.0f));
                    f17 = f11 * ((f25 * 2.0f) + f11);
                }
                f10 = f18 + lengthSquared;
            } else if (f27 >= (-extent5)) {
                if (f27 <= extent5) {
                    f14 = -this.extent;
                    f15 = -((f24 * f14) + f25);
                    if (f15 < (-lineSegment.getExtent())) {
                        extent2 = lineSegment.getExtent();
                        extent = -extent2;
                        f15 = extent - (f15 * 2.0f);
                    } else {
                        if (f15 > lineSegment.getExtent()) {
                            extent = lineSegment.getExtent();
                            f15 = extent - (f15 * 2.0f);
                        }
                        extent = -f15;
                    }
                } else {
                    f11 = lineSegment.getExtent();
                    f12 = -((f24 * f11) + dot);
                    f13 = this.extent;
                    if (f12 <= f13) {
                        if (f12 < (-f13)) {
                            f14 = -f13;
                            f15 = -((f24 * f14) + f25);
                            if (f15 < (-lineSegment.getExtent())) {
                                extent2 = lineSegment.getExtent();
                                extent = -extent2;
                                f15 = extent - (f15 * 2.0f);
                            } else {
                                if (f15 > lineSegment.getExtent()) {
                                    extent = lineSegment.getExtent();
                                    f15 = extent - (f15 * 2.0f);
                                }
                                extent = -f15;
                            }
                        }
                        f16 = (-f12) * f12;
                        f17 = f11 * ((f25 * 2.0f) + f11);
                    }
                    f10 = (f13 * (f13 - (f12 * 2.0f))) + (f11 * ((f25 * 2.0f) + f11)) + lengthSquared;
                }
                f16 = extent * f15;
                f17 = f14 * ((dot * 2.0f) + f14);
            } else {
                f11 = -lineSegment.getExtent();
                f12 = -((f24 * f11) + dot);
                f13 = this.extent;
                if (f12 <= f13) {
                    if (f12 < (-f13)) {
                        f14 = -f13;
                        f15 = -((f24 * f14) + f25);
                        if (f15 < (-lineSegment.getExtent())) {
                            extent2 = lineSegment.getExtent();
                            extent = -extent2;
                            f15 = extent - (f15 * 2.0f);
                            f16 = extent * f15;
                            f17 = f14 * ((dot * 2.0f) + f14);
                        } else {
                            if (f15 > lineSegment.getExtent()) {
                                extent = lineSegment.getExtent();
                                f15 = extent - (f15 * 2.0f);
                                f16 = extent * f15;
                                f17 = f14 * ((dot * 2.0f) + f14);
                            }
                            extent = -f15;
                            f16 = extent * f15;
                            f17 = f14 * ((dot * 2.0f) + f14);
                        }
                    }
                    f16 = (-f12) * f12;
                    f17 = f11 * ((f25 * 2.0f) + f11);
                }
                f10 = (f13 * (f13 - (f12 * 2.0f))) + (f11 * ((f25 * 2.0f) + f11)) + lengthSquared;
            }
            f18 = f16 + f17;
            f10 = f18 + lengthSquared;
        } else {
            float extent6 = this.extent + lineSegment.getExtent();
            float f33 = (dot - ((f24 > 0.0f ? -1.0f : 1.0f) * f25)) * 0.5f;
            float f34 = -f33;
            float f35 = -extent6;
            if (f34 < f35) {
                extent6 = f35;
            } else if (f34 <= extent6) {
                extent6 = f34;
            }
            f10 = (extent6 * ((f33 * 2.0f) + extent6)) + lengthSquared;
        }
        return FastMath.abs(f10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0069, code lost:
    
        if (r13 > 0.0f) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0082, code lost:
    
        if (r13 > 0.0f) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0084, code lost:
    
        r1 = ((-r13) * r13) + (r3 * ((r2 * 2.0f) + r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x008b, code lost:
    
        r3 = r3 * ((r2 * 2.0f) + r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ae, code lost:
    
        if (r13 > r9) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b1, code lost:
    
        r9 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c0, code lost:
    
        if (r13 > r9) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d4, code lost:
    
        if (r13 > r9) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e6, code lost:
    
        if (r13 > 0.0f) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public float distanceSquared(Ray ray) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        Vector3f subtract = ray.getOrigin().subtract(this.origin);
        float f16 = -ray.getDirection().dot(this.direction);
        float dot = subtract.dot(ray.getDirection());
        float f17 = -subtract.dot(this.direction);
        float lengthSquared = subtract.lengthSquared();
        float abs = FastMath.abs(1.0f - (f16 * f16));
        if (abs >= 1.1920929E-7f) {
            float f18 = (f16 * f17) - dot;
            float f19 = (f16 * dot) - f17;
            float f20 = this.extent;
            float f21 = f20 * abs;
            if (f18 >= 0.0f) {
                if (f19 < (-f21)) {
                    f10 = -f20;
                    f11 = -((f16 * f10) + dot);
                } else if (f19 <= f21) {
                    float f22 = 1.0f / abs;
                    float f23 = f18 * f22;
                    float f24 = f19 * f22;
                    f12 = (((f16 * f24) + f23 + (dot * 2.0f)) * f23) + (f24 * ((f16 * f23) + f24 + (f17 * 2.0f)));
                    f13 = f12 + lengthSquared;
                } else {
                    f14 = -((f16 * f20) + dot);
                }
            } else if (f19 <= (-f21)) {
                float f25 = -(((-f16) * f20) + dot);
                if (f25 > 0.0f) {
                    float f26 = -f20;
                    f12 = ((-f25) * f25) + (f26 * ((f17 * 2.0f) + f26));
                    f13 = f12 + lengthSquared;
                } else {
                    f15 = -f17;
                    if (f15 >= (-f20)) {
                    }
                    f20 = -f20;
                    f13 = (f20 * ((f17 * 2.0f) + f20)) + lengthSquared;
                }
            } else if (f19 <= f21) {
                f15 = -f17;
                if (f15 >= (-f20)) {
                }
                f20 = -f20;
                f13 = (f20 * ((f17 * 2.0f) + f20)) + lengthSquared;
            } else {
                f14 = -((f16 * f20) + dot);
                if (f14 <= 0.0f) {
                    f15 = -f17;
                    if (f15 >= (-f20)) {
                    }
                    f20 = -f20;
                    f13 = (f20 * ((f17 * 2.0f) + f20)) + lengthSquared;
                }
                float f27 = ((-f14) * f14) + (f20 * ((f17 * 2.0f) + f20));
                f13 = f27 + lengthSquared;
            }
        } else {
            if (f16 > 0.0f) {
                f10 = -this.extent;
            } else {
                f10 = this.extent;
            }
            f11 = -((f16 * f10) + dot);
        }
        return FastMath.abs(f13);
    }
}
