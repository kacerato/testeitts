.class public Lcom/jme3/shader/bufferobject/layout/RawLayout;
.super Lcom/jme3/shader/bufferobject/layout/BufferLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;-><init>()V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$1;

    const-class v1, [B

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$1;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$2;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$2;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$3;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$3;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$4;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$4;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$5;

    const-class v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$5;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$6;

    const-class v1, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$6;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$7;

    const-class v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$7;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$8;

    const-class v1, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$8;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$9;

    const-class v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$9;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$10;

    const-class v1, [Ljava/lang/Integer;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$10;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$11;

    const-class v1, [Ljava/lang/Float;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$11;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$12;

    const-class v1, [Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$12;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$13;

    const-class v1, [Lcom/jme3/math/Vector2f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$13;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$14;

    const-class v1, [Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$14;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$15;

    const-class v1, [Lcom/jme3/math/Vector4f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$15;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$16;

    const-class v1, [Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$16;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$17;

    const-class v1, [Lcom/jme3/math/Quaternion;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$17;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$18;

    const-class v1, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$18;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$19;

    const-class v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$19;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;

    const-class v1, [Lcom/jme3/math/Matrix3f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$20;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/RawLayout$21;

    const-class v1, [Lcom/jme3/math/Matrix4f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/RawLayout$21;-><init>(Lcom/jme3/shader/bufferobject/layout/RawLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "raw"

    return-object v0
.end method
