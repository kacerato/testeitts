.class public final synthetic Lcom/android/tools/r8/internal/Id1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/fo0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/ho0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ho0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Id1;->a:Lcom/android/tools/r8/internal/ho0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Id1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Tn0;Ljava/util/regex/Matcher;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Id1;->a:Lcom/android/tools/r8/internal/ho0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Id1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/ho0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Tn0;Ljava/util/regex/Matcher;)Z

    move-result p1

    return p1
.end method
