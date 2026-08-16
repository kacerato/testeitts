.class public final synthetic Lcom/android/tools/r8/utils/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/zip/ZipOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/x;->b:Ljava/util/zip/ZipOutputStream;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/x;->b:Ljava/util/zip/ZipOutputStream;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/tools/r8/utils/i;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Ljava/util/zip/ZipOutputStream;

    move-result-object p1

    return-object p1
.end method
