.class public Lu5/b$e;
.super Lj7/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/b;->X1(Ljava/util/List;LYc/d;Ljava/lang/String;Lu5/b$q;Lu5/b$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lu5/b;


# direct methods
.method public constructor <init>(Lu5/b;Ljava/lang/String;Ljava/lang/String;Lj7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "name",
            "path",
            "folder"
        }
    .end annotation

    iput-object p1, p0, Lu5/b$e;->r:Lu5/b;

    invoke-direct {p0, p2, p3, p4}, Lj7/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lj7/d;)V

    new-instance p1, Lu5/b$e$a;

    invoke-direct {p1, p0}, Lu5/b$e$a;-><init>(Lu5/b$e;)V

    iput-object p1, p0, LF7/i;->j:LF7/c;

    return-void
.end method


# virtual methods
.method public w()I
    .locals 1

    const v0, 0x7f05003c

    return v0
.end method

.method public y()I
    .locals 1

    const v0, 0x7f05003c

    return v0
.end method
