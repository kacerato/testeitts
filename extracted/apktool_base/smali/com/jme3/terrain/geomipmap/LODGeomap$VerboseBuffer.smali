.class public Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/terrain/geomipmap/LODGeomap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerboseBuffer"
.end annotation


# instance fields
.field count:I

.field private delegate:Lcom/jme3/scene/mesh/IndexBuffer;

.field final synthetic this$0:Lcom/jme3/terrain/geomipmap/LODGeomap;


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/LODGeomap;Lcom/jme3/scene/mesh/IndexBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->this$0:Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->count:I

    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->delegate:Lcom/jme3/scene/mesh/IndexBuffer;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;)Lcom/jme3/scene/mesh/IndexBuffer;
    .locals 0

    iget-object p0, p0, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->delegate:Lcom/jme3/scene/mesh/IndexBuffer;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->count:I

    return v0
.end method

.method public put(I)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->delegate:Lcom/jme3/scene/mesh/IndexBuffer;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->count:I

    invoke-virtual {v0, v1, p1}, Lcom/jme3/scene/mesh/IndexBuffer;->put(II)Lcom/jme3/scene/mesh/IndexBuffer;

    iget p1, p0, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/LODGeomap$VerboseBuffer;->count:I

    return-void
.end method
