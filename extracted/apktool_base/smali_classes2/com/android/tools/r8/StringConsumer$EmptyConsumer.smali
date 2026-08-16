.class public Lcom/android/tools/r8/StringConsumer$EmptyConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/StringConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/StringConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyConsumer"
.end annotation


# static fields
.field private static final a:Lcom/android/tools/r8/StringConsumer$EmptyConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/StringConsumer$EmptyConsumer;

    invoke-direct {v0}, Lcom/android/tools/r8/StringConsumer$EmptyConsumer;-><init>()V

    sput-object v0, Lcom/android/tools/r8/StringConsumer$EmptyConsumer;->a:Lcom/android/tools/r8/StringConsumer$EmptyConsumer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/android/tools/r8/StringConsumer$EmptyConsumer;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/StringConsumer$EmptyConsumer;->a:Lcom/android/tools/r8/StringConsumer$EmptyConsumer;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    return-void
.end method
