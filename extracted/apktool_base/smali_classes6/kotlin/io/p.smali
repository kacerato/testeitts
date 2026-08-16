.class public final synthetic Lkotlin/io/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/p;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/IOException;

    invoke-static {p1, p2}, Lkotlin/io/q;->S(Ljava/io/File;Ljava/io/IOException;)Lkotlin/io/t;

    move-result-object p1

    return-object p1
.end method
