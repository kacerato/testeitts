.class public Lu5/d$c;
.super Lu5/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/d;->Z1(Ljava/util/List;Lu5/d$u;Ljava/lang/String;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lu5/d;


# direct methods
.method public constructor <init>(Lu5/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "name",
            "path"
        }
    .end annotation

    iput-object p1, p0, Lu5/d$c;->q:Lu5/d;

    invoke-direct {p0, p2, p3}, Lu5/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lu5/d$c$a;

    invoke-direct {p1, p0}, Lu5/d$c$a;-><init>(Lu5/d$c;)V

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
