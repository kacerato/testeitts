.class public final Lh1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Lh1/x;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    const-string v1, "isIsolated"

    invoke-static {p0, v1, p1, v0, p2}, Lh1/z;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z[Lh1/x;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;[Lh1/x;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string p0, "com.google.android.gms.common.security.ProviderInstallerImpl"

    invoke-virtual {p2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    const-string v0, "reportRequestStats2"

    invoke-static {p0, v0, p1, p2, p3}, Lh1/z;->c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z[Lh1/x;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z[Lh1/x;)Ljava/lang/Object;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    array-length p2, p4

    new-array p3, p2, [Ljava/lang/Class;

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    aget-object v1, p4, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lh1/x;->b()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p3, v0

    aget-object v1, p4, v0

    invoke-virtual {v1}, Lh1/x;->c()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
