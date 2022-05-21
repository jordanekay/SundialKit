import Foundation

/// Monitors the network for connectivity
public protocol PathMonitor {
  /// The type of path accepted by the `PathMonitor`.
  associatedtype PathType: NetworkPath
  /// Sets the handler for when the `PathType` updates.
  func onPathUpdate(_ handler: @escaping (PathType) -> Void)
  /// Starts the monitor.
  func start(queue: DispatchQueue)
  /// Stops the montor.
  func cancel()
}
