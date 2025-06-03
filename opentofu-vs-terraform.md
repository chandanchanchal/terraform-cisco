
# Functional Differences Between OpenTofu and Terraform

## Introduction
OpenTofu is a community-driven open-source alternative to Terraform. It was forked from Terraform after HashiCorp changed the Terraform license from MPL to BSL in August 2023. This file compares functional differences between the two tools.

---

## 1. **License**
| Feature         | Terraform (v1.5+)     | OpenTofu             |
|-----------------|-----------------------|-----------------------|
| License         | BSL (Business Source License) | MPL v2.0 (Open Source) |
| Community Contributions | Restricted under BSL | Fully Open and Community Driven |

---

## 2. **State Management**
| Feature         | Terraform         | OpenTofu             |
|-----------------|------------------|-----------------------|
| State Environments | Limited to workspaces | Supports Named Environments |
| Drift Detection | Standard          | Enhanced with `state replace-provider` and new subcommands |
| State File Format | Compatible        | Fully compatible (as of latest versions) |

---

## 3. **CLI and Commands**
| Feature         | Terraform         | OpenTofu             |
|-----------------|------------------|-----------------------|
| Interactive Mode | Basic            | Improved experience planned |
| CLI Compatibility | Yes              | 100% Compatible with Terraform 1.5.x |
| Extra CLI Features | ❌              | ✅ Planned/Released (e.g., plugin management) |

---

## 4. **Provider and Module Ecosystem**
| Feature         | Terraform         | OpenTofu             |
|-----------------|------------------|-----------------------|
| Provider Registry | Terraform Registry (centralized) | Uses Terraform Registry, plans to decentralize |
| Module Support   | Strong           | Fully compatible |
| Custom Providers | Supported        | Supported (OpenTofu plans to make this easier) |

---

## 5. **Governance and Community**
| Feature         | Terraform         | OpenTofu             |
|-----------------|------------------|-----------------------|
| Maintained By   | HashiCorp         | Linux Foundation + Community |
| Community RFCs  | Controlled by HashiCorp | Community RFC process |

---

## 6. **Backward Compatibility**
| Feature         | Terraform         | OpenTofu             |
|-----------------|------------------|-----------------------|
| Compatibility with Terraform Code | Native               | Native |
| Planned Divergence | Yes (closed features likely in future) | Yes (open enhancements) |

---

## 7. **Use Cases and Scenarios**
| Use Case                    | Best Choice        |
|-----------------------------|--------------------|
| Enterprises with commercial support | Terraform |
| Fully open-source workflows | OpenTofu |
| Open Contribution Model     | OpenTofu |
| Long-term stability without licensing concerns | OpenTofu |

---

## Conclusion

Both OpenTofu and Terraform provide strong infrastructure-as-code tooling. However, OpenTofu is more aligned with open-source principles and community governance. It is ideal for users who want future-proof, open tooling without vendor lock-in.

> 🔁 OpenTofu aims to remain **fully backward compatible** with Terraform, while innovating on top of it in a truly open way.
