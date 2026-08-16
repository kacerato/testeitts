.class public final LG/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()LG/a;
    .locals 1

    new-instance v0, LG/b;

    invoke-direct {v0}, LG/b;-><init>()V

    return-object v0
.end method
