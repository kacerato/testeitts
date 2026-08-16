.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$e;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->l0(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$out"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$j;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$e$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$e$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$e;)V

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/f;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Ljava/lang/Runnable;)V

    return-void
.end method
