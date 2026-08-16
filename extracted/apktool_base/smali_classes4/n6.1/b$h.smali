.class public final Ln6/b$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final a:Ln6/b$g;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln6/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Ln6/b$g;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "totalTimes",
            "coreTimes",
            "syntheticPerCoreData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/b$g;",
            "Ljava/util/List<",
            "Ln6/b$e;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ln6/b$h;->a:Ln6/b$g;

    .line 4
    iput-object p2, p0, Ln6/b$h;->b:Ljava/util/List;

    .line 5
    iput-boolean p3, p0, Ln6/b$h;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ln6/b$g;Ljava/util/List;ZLn6/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ln6/b$h;-><init>(Ln6/b$g;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic a(Ln6/b$h;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln6/b$h;->b:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Ln6/b$h;)Ln6/b$g;
    .locals 0

    iget-object p0, p0, Ln6/b$h;->a:Ln6/b$g;

    return-object p0
.end method

.method public static synthetic c(Ln6/b$h;)Z
    .locals 0

    iget-boolean p0, p0, Ln6/b$h;->c:Z

    return p0
.end method
