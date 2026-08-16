.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$h;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$h;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->q(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->t(Ljava/io/File;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$h$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$h$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$h;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
