.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->i0(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$out",
            "val$listener",
            "val$downloadUrl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;->c:Ljava/lang/String;

    const-string v2, "Invalid download url"

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;

    invoke-static {v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->m(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;)V

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cachedZip"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    iput-object p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->d:Ljava/io/File;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V

    return-void
.end method
