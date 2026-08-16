.class public LW/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LW/g<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LC/a;Z)LW/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/a;",
            "Z)",
            "LW/f<",
            "TR;>;"
        }
    .end annotation

    sget-object p1, LW/e;->a:LW/e;

    return-object p1
.end method
