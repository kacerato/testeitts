.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;
.super LF7/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

.field public final synthetic n:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "file"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;->n:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->m()Z

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

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    new-instance v0, LG7/e;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    invoke-direct {v0, v1}, LG7/e;-><init>(LG7/e$c;)V

    invoke-super {p0, v0}, LF7/i;->a(LG7/a;)LF7/i;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
