.class public final synthetic Lcom/android/tools/r8/retrace/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/ProguardMapProducer;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/retrace/w;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/retrace/w;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
