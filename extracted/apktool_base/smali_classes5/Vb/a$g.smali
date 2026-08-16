.class public LVb/a$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

.field public final b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

.field public final c:Loc/b;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LVb/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/filament/filamat/MaterialBuilder$m;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;Loc/b;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "materialShader",
            "materialConfig",
            "sceneVFXShader",
            "uniforms",
            "samplers",
            "shaderCode",
            "vertexCode",
            "debugIpp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;",
            "Loc/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LVb/c;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/filament/filamat/MaterialBuilder$m;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVb/a$g;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iput-object p2, p0, LVb/a$g;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialConfig;

    iput-object p3, p0, LVb/a$g;->c:Loc/b;

    iput-object p4, p0, LVb/a$g;->d:Ljava/util/Map;

    iput-object p5, p0, LVb/a$g;->e:Ljava/util/Map;

    iput-object p6, p0, LVb/a$g;->f:Ljava/lang/String;

    iput-object p7, p0, LVb/a$g;->g:Ljava/lang/String;

    iput-object p8, p0, LVb/a$g;->h:Ljava/lang/String;

    return-void
.end method
