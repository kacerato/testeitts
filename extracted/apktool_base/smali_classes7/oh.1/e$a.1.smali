.class public Loh/e$a;
.super Loh/T;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loh/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Loh/T;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public e(Loh/C0;)Loh/B;
    .locals 0

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Loh/e;->E([B)Loh/e;

    move-result-object p1

    return-object p1
.end method
