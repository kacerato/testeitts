.class public LGc/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "sampleRate"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGc/b$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput p2, p0, LGc/b$a;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LGc/b$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LGc/b$a;->b:I

    return v0
.end method
