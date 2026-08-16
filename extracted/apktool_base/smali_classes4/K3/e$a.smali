.class public LK3/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "project",
            "buildDictionary",
            "parent"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, LK3/e;->f(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;Ljava/io/File;ZLK3/e$e;)V

    return-void
.end method
