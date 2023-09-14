Steps to repro:

```
tuist fetch
tuist cache warm -x FeatureA
```

Will fail to build with `module not found NonEmpty`
