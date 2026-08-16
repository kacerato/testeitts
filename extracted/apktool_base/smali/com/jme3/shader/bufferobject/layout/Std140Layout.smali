.class public Lcom/jme3/shader/bufferobject/layout/Std140Layout;
.super Lcom/jme3/shader/bufferobject/layout/BufferLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;-><init>()V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$1;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$1;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$2;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$2;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$3;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$3;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$4;

    const-class v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$4;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$5;

    const-class v1, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$5;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$6;

    const-class v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$6;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$7;

    const-class v1, Lcom/jme3/math/Vector4f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$7;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$8;

    const-class v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$8;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$9;

    const-class v1, [Ljava/lang/Integer;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$9;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$10;

    const-class v1, [Ljava/lang/Float;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$10;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$11;

    const-class v1, [Ljava/lang/Boolean;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$11;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$12;

    const-class v1, [Lcom/jme3/math/Vector2f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$12;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$13;

    const-class v1, [Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$13;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$14;

    const-class v1, [Lcom/jme3/math/Vector4f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$14;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$15;

    const-class v1, [Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$15;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$16;

    const-class v1, [Lcom/jme3/math/Quaternion;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$16;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;

    const-class v1, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$17;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$18;

    const-class v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$18;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$19;

    const-class v1, [Lcom/jme3/math/Matrix3f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$19;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    new-instance v0, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;

    const-class v1, [Lcom/jme3/math/Matrix4f;

    invoke-direct {v0, p0, v1}, Lcom/jme3/shader/bufferobject/layout/Std140Layout$20;-><init>(Lcom/jme3/shader/bufferobject/layout/Std140Layout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout;->registerSerializer(Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "std140"

    return-object v0
.end method
