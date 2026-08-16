.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

.field public static final b:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$t;->CUSTOM0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    sget-object v2, Lcom/google/android/filament/VertexBuffer$c;->CUSTOM0:Lcom/google/android/filament/VertexBuffer$c;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$t;Lcom/google/android/filament/VertexBuffer$c;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$t;->CUSTOM1:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    sget-object v2, Lcom/google/android/filament/VertexBuffer$c;->CUSTOM1:Lcom/google/android/filament/VertexBuffer$c;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$t;Lcom/google/android/filament/VertexBuffer$c;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
