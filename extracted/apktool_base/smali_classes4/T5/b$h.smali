.class public LT5/b$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "owner",
            "repo",
            "branch",
            "path",
            "branchExplicit"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT5/b$h;->a:Ljava/lang/String;

    iput-object p2, p0, LT5/b$h;->b:Ljava/lang/String;

    iput-object p3, p0, LT5/b$h;->c:Ljava/lang/String;

    iput-object p4, p0, LT5/b$h;->d:Ljava/lang/String;

    iput-boolean p5, p0, LT5/b$h;->e:Z

    return-void
.end method
