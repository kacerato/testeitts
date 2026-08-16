.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/filament/Engine;I)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engine",
            "neededVertexCount"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->b:I

    if-le v1, v2, :cond_1

    :cond_0
    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->b:I

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    new-instance v2, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v2}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->b:I

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v4

    sget-object v5, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v2, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v6

    sget-object v7, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    const/16 v10, 0x8

    const/16 v11, 0x14

    move-object v9, v2

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v12

    sget-object v2, Lcom/google/android/filament/VertexBuffer$c;->COLOR:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v15, Lcom/google/android/filament/VertexBuffer$a;->UBYTE4:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v16, 0x10

    const/16 v17, 0x14

    const/4 v14, 0x0

    move-object v13, v2

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    :cond_1
    return-void
.end method
