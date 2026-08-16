.class public LX5/b$l;
.super LF7/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public final m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lm7/b;

    invoke-direct {v1}, Lm7/b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lm7/a;

    invoke-direct {v1}, Lm7/a;-><init>()V

    :goto_0
    invoke-direct {p0, v0, v1}, LF7/i;-><init>(Ljava/lang/String;LF7/j;)V

    iput-object p1, p0, LX5/b$l;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    return-void
.end method

.method public static synthetic u(LX5/b$l;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;
    .locals 0

    iget-object p0, p0, LX5/b$l;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    return-object p0
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LX5/b$l;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
