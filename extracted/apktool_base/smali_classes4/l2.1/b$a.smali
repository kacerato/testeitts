.class public final Ll2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFF)Ll2/c;
    .locals 1

    const/4 p4, 0x0

    const/16 v0, 0xff

    invoke-static {p4, v0, p2, p3, p1}, Ll2/v;->n(IIFFF)I

    move-result p1

    invoke-static {v0, p1}, Ll2/c;->a(II)Ll2/c;

    move-result-object p1

    return-object p1
.end method
