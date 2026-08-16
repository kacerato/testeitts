.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->s(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$sImportListener",
            "val$count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipFile"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;->a:I

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;->c:I

    invoke-interface {v1, v0, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;->b(IILjava/lang/String;)V

    return-void
.end method
