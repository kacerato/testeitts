.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Vertex/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/filament/filamat/MaterialBuilder$t;

.field public final b:Lcom/google/android/filament/VertexBuffer$c;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/filamat/MaterialBuilder$t;Lcom/google/android/filament/VertexBuffer$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "materialAttribute",
            "vertexAttribute"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->a:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->b:Lcom/google/android/filament/VertexBuffer$c;

    return-void
.end method
