.class public final Lw2/G$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lw2/G$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lw2/G$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lw2/h;
    .locals 1

    new-instance v0, Lw2/x;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {v0, p1}, Lw2/x;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
