.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$projectRootPath",
            "val$defaultName",
            "val$isTemplate",
            "val$projectVersion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;->c:Z

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;->d:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;->c:Z

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/t$b;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;->a2(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;Ljava/lang/String;Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s$f;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/s;

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
